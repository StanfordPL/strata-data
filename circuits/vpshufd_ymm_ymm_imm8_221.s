  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  callq .clear_cf                  #  1     0     5      OPC=callq_label             
  callq .read_cf_into_rbx          #  2     0x5   5      OPC=callq_label             
  vmovshdup %ymm2, %ymm7           #  3     0xa   4      OPC=vmovshdup_ymm_ymm       
  vunpckhps %ymm7, %ymm2, %ymm13   #  4     0xe   4      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckldq %ymm13, %ymm2, %ymm6  #  5     0x12  5      OPC=vpunpckldq_ymm_ymm_ymm  
  cvtsi2sdl %ebx, %xmm6            #  6     0x17  4      OPC=cvtsi2sdl_xmm_r32       
  vunpckhpd %ymm6, %ymm6, %ymm1    #  7     0x1b  4      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                             #  8     0x1f  1      OPC=retq                    
                                                                                     
.size target, .-target
