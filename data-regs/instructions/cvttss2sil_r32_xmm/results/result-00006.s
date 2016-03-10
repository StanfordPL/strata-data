  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vminps %xmm1, %xmm1, %xmm3                #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  vcvttps2dq %ymm3, %ymm2                   #  2     0x4   4      OPC=vcvttps2dq_ymm_ymm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label         
  callq .move_032_064_r8d_r9d_rbx           #  4     0xd   5      OPC=callq_label         
  xchgl %eax, %ebx                          #  5     0x12  1      OPC=xchgl_r32_eax       
  retq                                      #  6     0x13  1      OPC=retq                
                                                                                          
.size target, .-target
