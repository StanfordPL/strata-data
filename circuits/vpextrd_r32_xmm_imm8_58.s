  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  movsldup %xmm6, %xmm2                         #  2     0x5   4      OPC=movsldup_xmm_xmm  
  xorq %rbx, %rbx                               #  3     0x9   3      OPC=xorq_r64_r64      
  callq .move_128_032_xmm2_eax_edx_r8d_r9d      #  4     0xc   5      OPC=callq_label       
  adcl %edx, %ebx                               #  5     0x11  2      OPC=adcl_r32_r32      
  retq                                          #  6     0x13  1      OPC=retq              
                                                                                            
.size target, .-target
