  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vbroadcastss %xmm2, %xmm15  #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  movshdup %xmm2, %xmm1       #  2     0x5   4      OPC=movshdup_xmm_xmm      
  punpckhdq %xmm1, %xmm15     #  3     0x9   5      OPC=punpckhdq_xmm_xmm     
  punpcklqdq %xmm15, %xmm1    #  4     0xe   5      OPC=punpcklqdq_xmm_xmm    
  retq                        #  5     0x13  1      OPC=retq                  
                                                                              
.size target, .-target
