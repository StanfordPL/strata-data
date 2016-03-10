  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  vmovaps %xmm1, %xmm3                          #  1     0     4      OPC=vmovaps_xmm_xmm  
  vrcpps %ymm3, %ymm13                          #  2     0x4   4      OPC=vrcpps_ymm_ymm   
  vmovd %xmm13, %ebx                            #  3     0x8   4      OPC=vmovd_r32_xmm    
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  4     0xc   5      OPC=callq_label      
  xaddl %ebx, %r13d                             #  5     0x11  4      OPC=xaddl_r32_r32    
  retq                                          #  6     0x15  1      OPC=retq             
                                                                                           
.size target, .-target
