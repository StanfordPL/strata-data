  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  xorpd %xmm3, %xmm3          #  1     0     4      OPC=xorpd_xmm_xmm         
  vaddss %xmm3, %xmm3, %xmm5  #  2     0x4   4      OPC=vaddss_xmm_xmm_xmm    
  vbroadcastss %xmm5, %ymm10  #  3     0x8   5      OPC=vbroadcastss_ymm_xmm  
  movq %xmm10, %xmm1          #  4     0xd   5      OPC=movq_xmm_xmm          
  retq                        #  5     0x12  1      OPC=retq                  
                                                                              
.size target, .-target
