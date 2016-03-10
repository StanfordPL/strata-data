  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  pmovsxdq %xmm1, %xmm9                         #  1     0     6      OPC=pmovsxdq_xmm_xmm       
  vunpckhpd %xmm9, %xmm9, %xmm3                 #  2     0x6   5      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  3     0xb   5      OPC=callq_label            
  movq %xmm6, %rbx                              #  4     0x10  5      OPC=movq_r64_xmm           
  retq                                          #  5     0x15  1      OPC=retq                   
                                                                                                 
.size target, .-target
