  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  callq .move_064_032_rbx_r12d_r13d         #  1     0     5      OPC=callq_label           
  vmovd %r12d, %xmm2                        #  2     0x5   5      OPC=vmovd_xmm_r32         
  vpbroadcastd %xmm2, %xmm2                 #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  4     0xf   5      OPC=callq_label           
  cmovpol %ecx, %edx                        #  5     0x14  3      OPC=cmovpol_r32_r32       
  xchgl %edx, %ebx                          #  6     0x17  2      OPC=xchgl_r32_r32         
  retq                                      #  7     0x19  1      OPC=retq                  
                                                                                            
.size target, .-target
