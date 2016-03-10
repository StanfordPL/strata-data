  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm10  #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  movapd %xmm2, %xmm3         #  2     0x5   4      OPC=movapd_xmm_xmm        
  divss %xmm3, %xmm1          #  3     0x9   4      OPC=divss_xmm_xmm         
  vmovdqa %xmm10, %xmm11      #  4     0xd   5      OPC=vmovdqa_xmm_xmm       
  punpckhqdq %xmm11, %xmm1    #  5     0x12  5      OPC=punpckhqdq_xmm_xmm    
  retq                        #  6     0x17  1      OPC=retq                  
                                                                              
.size target, .-target
