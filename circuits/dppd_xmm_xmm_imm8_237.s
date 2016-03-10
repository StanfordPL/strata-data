  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  mulpd %xmm2, %xmm1                            #  1     0     4      OPC=mulpd_xmm_xmm     
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label       
  addsubpd %xmm6, %xmm1                         #  3     0x9   4      OPC=addsubpd_xmm_xmm  
  unpckhpd %xmm6, %xmm1                         #  4     0xd   4      OPC=unpckhpd_xmm_xmm  
  retq                                          #  5     0x11  1      OPC=retq              
                                                                                            
.size target, .-target
