  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label         
  vxorps %xmm1, %xmm1, %xmm6                    #  2     0x5   4      OPC=vxorps_xmm_xmm_xmm  
  vmovupd %ymm6, %ymm7                          #  3     0x9   4      OPC=vmovupd_ymm_ymm     
  vcvtsd2sil %xmm7, %ebx                        #  4     0xd   4      OPC=vcvtsd2sil_r32_xmm  
  xchgl %r11d, %ebx                             #  5     0x11  3      OPC=xchgl_r32_r32       
  retq                                          #  6     0x14  1      OPC=retq                
                                                                                              
.size target, .-target
