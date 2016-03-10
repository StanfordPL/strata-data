  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vaddps %xmm1, %xmm1, %xmm12      #  1     0     4      OPC=vaddps_xmm_xmm_xmm     
  vcvtsd2ss %xmm12, %xmm1, %xmm14  #  2     0x4   5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  vbroadcastsd %xmm14, %ymm13      #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm   
  vmovshdup %xmm13, %xmm12         #  4     0xe   5      OPC=vmovshdup_xmm_xmm      
  movd %xmm12, %ebx                #  5     0x13  5      OPC=movd_r32_xmm           
  retq                             #  6     0x18  1      OPC=retq                   
                                                                                    
.size target, .-target
