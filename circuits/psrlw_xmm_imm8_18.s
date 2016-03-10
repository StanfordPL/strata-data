  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  minsd %xmm1, %xmm1          #  1     0     4      OPC=minsd_xmm_xmm         
  vbroadcastsd %xmm1, %ymm15  #  2     0x4   5      OPC=vbroadcastsd_ymm_xmm  
  movq %xmm15, %xmm1          #  3     0x9   5      OPC=movq_xmm_xmm          
  punpckhqdq %xmm1, %xmm1     #  4     0xe   4      OPC=punpckhqdq_xmm_xmm    
  retq                        #  5     0x12  1      OPC=retq                  
                                                                              
.size target, .-target
