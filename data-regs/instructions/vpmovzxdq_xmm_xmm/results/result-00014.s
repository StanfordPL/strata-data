  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm2_eax_edx_r8d_r9d      #  1     0     5      OPC=callq_label      
  callq .move_128_064_xmm2_r12_r13              #  2     0x5   5      OPC=callq_label      
  xchgl %r12d, %r12d                            #  3     0xa   3      OPC=xchgl_r32_r32    
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  4     0xd   5      OPC=callq_label      
  vmovupd %xmm4, %xmm1                          #  5     0x12  4      OPC=vmovupd_xmm_xmm  
  xchgl %edx, %r13d                             #  6     0x16  3      OPC=xchgl_r32_r32    
  callq .move_064_128_r12_r13_xmm1              #  7     0x19  5      OPC=callq_label      
  retq                                          #  8     0x1e  1      OPC=retq             
                                                                                           
.size target, .-target
