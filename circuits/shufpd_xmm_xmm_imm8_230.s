  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  movq $0xfffffffffffffff0, %r10       #  1     0     10     OPC=movq_r64_imm64          
  subq %r10, %r10                      #  2     0xa   3      OPC=subq_r64_r64            
  vcvtsi2sdl %r10d, %xmm2, %xmm3       #  3     0xd   5      OPC=vcvtsi2sdl_xmm_xmm_r32  
  callq .move_128_64_xmm3_xmm10_xmm11  #  4     0x12  5      OPC=callq_label             
  movups %xmm1, %xmm10                 #  5     0x17  4      OPC=movups_xmm_xmm          
  callq .move_64_128_xmm10_xmm11_xmm1  #  6     0x1b  5      OPC=callq_label             
  retq                                 #  7     0x20  1      OPC=retq                    
                                                                                         
.size target, .-target
