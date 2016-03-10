  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                 
.target:                                    #        0    0      OPC=<label>            
  punpckhdq %xmm1, %xmm1                    #  1     0    4      OPC=punpckhdq_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4  5      OPC=callq_label        
  movzwl %r8w, %ebx                         #  3     0x9  4      OPC=movzwl_r32_r16     
  retq                                      #  4     0xd  1      OPC=retq               
                                                                                        
.size target, .-target
