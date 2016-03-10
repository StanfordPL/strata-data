  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm12_xmm13       #  1     0     5      OPC=callq_label       
  pmovzxwq %xmm13, %xmm1                    #  2     0x5   6      OPC=pmovzxwq_xmm_xmm  
  movq $0x0, %rbx                           #  3     0xb   10     OPC=movq_r64_imm64    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0x15  5      OPC=callq_label       
  xchgw %r8w, %bx                           #  5     0x1a  4      OPC=xchgw_r16_r16     
  retq                                      #  6     0x1e  1      OPC=retq              
                                                                                        
.size target, .-target
