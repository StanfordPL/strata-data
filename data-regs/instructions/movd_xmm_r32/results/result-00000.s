  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vmovd %ebx, %xmm10                   #  1     0     4      OPC=vmovd_xmm_r32          
  vcvttps2dq %ymm10, %ymm9             #  2     0x4   5      OPC=vcvttps2dq_ymm_ymm     
  vsqrtps %ymm9, %ymm0                 #  3     0x9   5      OPC=vsqrtps_ymm_ymm        
  vsqrtpd %ymm0, %ymm8                 #  4     0xe   4      OPC=vsqrtpd_ymm_ymm        
  vunpckhpd %xmm8, %xmm0, %xmm11       #  5     0x12  5      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label            
  retq                                 #  7     0x1c  1      OPC=retq                   
                                                                                        
.size target, .-target
