  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  cvtpd2dq %xmm5, %xmm10                        #  2     0x5   5      OPC=cvtpd2dq_xmm_xmm    
  mulps %xmm2, %xmm1                            #  3     0xa   3      OPC=mulps_xmm_xmm       
  addps %xmm6, %xmm1                            #  4     0xd   3      OPC=addps_xmm_xmm       
  unpckhps %xmm10, %xmm1                        #  5     0x10  4      OPC=unpckhps_xmm_xmm    
  punpcklqdq %xmm1, %xmm1                       #  6     0x14  4      OPC=punpcklqdq_xmm_xmm  
  retq                                          #  7     0x18  1      OPC=retq                
                                                                                              
.size target, .-target
