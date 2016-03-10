  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vbroadcastsd %xmm2, %ymm15  #  1     0    5      OPC=vbroadcastsd_ymm_xmm  
  punpcklqdq %xmm15, %xmm1    #  2     0x5  5      OPC=punpcklqdq_xmm_xmm    
  retq                        #  3     0xa  1      OPC=retq                  
                                                                             
.size target, .-target
