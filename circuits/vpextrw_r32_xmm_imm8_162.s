  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vmovmskpd %xmm5, %ebx                         #  2     0x5   4      OPC=vmovmskpd_r32_xmm  
  vmovq %xmm5, %rbp                             #  3     0x9   5      OPC=vmovq_r64_xmm      
  movw %bp, %bx                                 #  4     0xe   3      OPC=movw_r16_r16       
  retq                                          #  5     0x11  1      OPC=retq               
                                                                                             
.size target, .-target
