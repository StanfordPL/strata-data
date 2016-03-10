  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vminps %xmm1, %xmm1, %xmm2                #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label         
  callq .move_032_064_r8d_r9d_rbx           #  3     0x9   5      OPC=callq_label         
  xaddl %ebx, %r8d                          #  4     0xe   4      OPC=xaddl_r32_r32       
  retq                                      #  5     0x12  1      OPC=retq                
                                                                                          
.size target, .-target
