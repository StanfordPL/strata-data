  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0x8, %r8                      #  1     0     10     OPC=movq_r64_imm64  
  xaddw %r8w, %r8w                    #  2     0xa   5      OPC=xaddw_r16_r16   
  callq .move_byte_5_of_ymm1_to_r8b   #  3     0xf   5      OPC=callq_label     
  vmovd %r8d, %xmm1                   #  4     0x14  5      OPC=vmovd_xmm_r32   
  callq .move_r8b_to_byte_25_of_ymm1  #  5     0x19  5      OPC=callq_label     
  vmovq %xmm1, %rbx                   #  6     0x1e  5      OPC=vmovq_r64_xmm   
  shlb $0x1, %bh                      #  7     0x23  2      OPC=shlb_rh_one     
  retq                                #  8     0x25  1      OPC=retq            
                                                                                
.size target, .-target
