  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  pandn %xmm1, %xmm1          #  1     0    4      OPC=pandn_xmm_xmm         
  vpbroadcastq %xmm1, %xmm15  #  2     0x4  5      OPC=vpbroadcastq_xmm_xmm  
  punpcklqdq %xmm15, %xmm1    #  3     0x9  5      OPC=punpcklqdq_xmm_xmm    
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
