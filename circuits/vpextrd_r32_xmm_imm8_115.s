  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  vmovshdup %xmm1, %xmm15         #  1     0     4      OPC=vmovshdup_xmm_xmm     
  vmulss %xmm15, %xmm15, %xmm14   #  2     0x4   5      OPC=vmulss_xmm_xmm_xmm    
  vandnpd %xmm14, %xmm14, %xmm10  #  3     0x9   5      OPC=vandnpd_xmm_xmm_xmm   
  unpckhps %xmm10, %xmm15         #  4     0xe   4      OPC=unpckhps_xmm_xmm      
  vbroadcastss %xmm15, %xmm6      #  5     0x12  5      OPC=vbroadcastss_xmm_xmm  
  movd %xmm6, %ebx                #  6     0x17  4      OPC=movd_r32_xmm          
  retq                            #  7     0x1b  1      OPC=retq                  
                                                                                  
.size target, .-target
