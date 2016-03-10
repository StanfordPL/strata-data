  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  unpckhpd %xmm1, %xmm1                     #  1     0     4      OPC=unpckhpd_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label       
  callq .move_032_016_edx_r12w_r13w         #  3     0x9   5      OPC=callq_label       
  movzwl %r13w, %ebx                        #  4     0xe   4      OPC=movzwl_r32_r16    
  retq                                      #  5     0x12  1      OPC=retq              
                                                                                        
.size target, .-target
