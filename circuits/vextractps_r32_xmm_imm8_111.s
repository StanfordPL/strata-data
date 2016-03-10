  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vpunpckhdq %xmm1, %xmm1, %xmm0                #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  cvttss2sil %xmm0, %ebx                        #  2     0x4   4      OPC=cvttss2sil_r32_xmm      
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0x8   5      OPC=callq_label             
  xaddl %ebx, %r13d                             #  4     0xd   4      OPC=xaddl_r32_r32           
  retq                                          #  5     0x11  1      OPC=retq                    
                                                                                                  
.size target, .-target
