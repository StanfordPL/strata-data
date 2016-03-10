  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  unpckhps %xmm1, %xmm1                     #  1     0     3      OPC=unpckhps_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x3   5      OPC=callq_label       
  callq .move_032_016_edx_r8w_r9w           #  3     0x8   5      OPC=callq_label       
  movzwq %r9w, %rbx                         #  4     0xd   4      OPC=movzwq_r64_r16    
  retq                                      #  5     0x11  1      OPC=retq              
                                                                                        
.size target, .-target
