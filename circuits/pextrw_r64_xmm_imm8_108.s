  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  vmovmskpd %xmm13, %r8d               #  2     0x5   5      OPC=vmovmskpd_r32_xmm  
  callq .move_r8b_to_byte_0_of_ymm1    #  3     0xa   5      OPC=callq_label        
  callq .move_128_064_xmm1_r12_r13     #  4     0xf   5      OPC=callq_label        
  movq $0x6c, %rbx                     #  5     0x14  10     OPC=movq_r64_imm64     
  xaddw %bx, %r13w                     #  6     0x1e  5      OPC=xaddw_r16_r16      
  retq                                 #  7     0x23  1      OPC=retq               
                                                                                    
.size target, .-target
