  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label          
  vmovd %r13d, %xmm14                           #  2     0x5   5      OPC=vmovd_xmm_r32        
  movd %r11d, %xmm10                            #  3     0xa   5      OPC=movd_xmm_r32         
  vphsubd %xmm10, %xmm14, %xmm4                 #  4     0xf   5      OPC=vphsubd_xmm_xmm_xmm  
  vmovsldup %ymm4, %ymm9                        #  5     0x14  4      OPC=vmovsldup_ymm_ymm    
  orpd %xmm9, %xmm4                             #  6     0x18  5      OPC=orpd_xmm_xmm         
  movups %xmm4, %xmm1                           #  7     0x1d  3      OPC=movups_xmm_xmm       
  retq                                          #  8     0x20  1      OPC=retq                 
                                                                                               
.size target, .-target
