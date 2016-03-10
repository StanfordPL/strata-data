  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  pmovzxwd %xmm7, %xmm1                         #  2     0x5   5      OPC=pmovzxwd_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d      #  3     0xa   5      OPC=callq_label       
  negl %r8d                                     #  4     0xf   3      OPC=negl_r32          
  callq .read_of_into_rbx                       #  5     0x12  5      OPC=callq_label       
  xaddl %ebx, %edx                              #  6     0x17  3      OPC=xaddl_r32_r32     
  retq                                          #  7     0x1a  1      OPC=retq              
                                                                                            
.size target, .-target
