  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  vmovdqu %xmm1, %xmm13                         #  1     0     4      OPC=vmovdqu_xmm_xmm           
  vfnmsub132ps %ymm13, %ymm13, %ymm13           #  2     0x4   5      OPC=vfnmsub132ps_ymm_ymm_ymm  
  vbroadcastsd %xmm1, %ymm6                     #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm      
  vunpcklpd %ymm13, %ymm6, %ymm3                #  4     0xe   5      OPC=vunpcklpd_ymm_ymm_ymm     
  xorq %rbx, %rbx                               #  5     0x13  3      OPC=xorq_r64_r64              
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  6     0x16  5      OPC=callq_label               
  cmovnll %r11d, %ebx                           #  7     0x1b  4      OPC=cmovnll_r32_r32           
  retq                                          #  8     0x1f  1      OPC=retq                      
                                                                                                    
.size target, .-target
