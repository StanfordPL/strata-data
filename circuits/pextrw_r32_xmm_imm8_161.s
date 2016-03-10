  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  pmovzxwd %xmm1, %xmm11                    #  1     0     6      OPC=pmovzxwd_xmm_xmm  
  vmovupd %xmm11, %xmm1                     #  2     0x6   5      OPC=vmovupd_xmm_xmm   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xb   5      OPC=callq_label       
  movzwq %dx, %rbx                          #  4     0x10  4      OPC=movzwq_r64_r16    
  retq                                      #  5     0x14  1      OPC=retq              
                                                                                        
.size target, .-target
