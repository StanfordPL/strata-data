  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                       
.target:                                    #        0    0      OPC=<label>                  
  vunpckhpd %xmm1, %xmm1, %xmm9             #  1     0    4      OPC=vunpckhpd_xmm_xmm_xmm    
  vpunpckhqdq %xmm1, %xmm9, %xmm1           #  2     0x4  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x8  5      OPC=callq_label              
  movl %edx, %ebx                           #  4     0xd  2      OPC=movl_r32_r32             
  retq                                      #  5     0xf  1      OPC=retq                     
                                                                                              
.size target, .-target
