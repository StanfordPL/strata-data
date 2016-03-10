  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  movd %ebx, %xmm4            #  1     0     4      OPC=movd_xmm_r32          
  vpbroadcastd %xmm4, %ymm1   #  2     0x4   5      OPC=vpbroadcastd_ymm_xmm  
  unpckhps %xmm2, %xmm1       #  3     0x9   3      OPC=unpckhps_xmm_xmm      
  subss %xmm4, %xmm1          #  4     0xc   4      OPC=subss_xmm_xmm         
  vmovsd %xmm2, %xmm1, %xmm1  #  5     0x10  4      OPC=vmovsd_xmm_xmm_xmm    
  retq                        #  6     0x14  1      OPC=retq                  
                                                                              
.size target, .-target
