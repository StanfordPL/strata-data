  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vzeroall                      #  1     0     3      OPC=vzeroall              
  vdivss %xmm14, %xmm12, %xmm3  #  2     0x3   5      OPC=vdivss_xmm_xmm_xmm    
  vpmovsxdq %xmm3, %xmm10       #  3     0x8   5      OPC=vpmovsxdq_xmm_xmm     
  vbroadcastsd %xmm10, %ymm1    #  4     0xd   5      OPC=vbroadcastsd_ymm_xmm  
  vmovshdup %ymm1, %ymm1        #  5     0x12  4      OPC=vmovshdup_ymm_ymm     
  retq                          #  6     0x16  1      OPC=retq                  
                                                                                
.size target, .-target
