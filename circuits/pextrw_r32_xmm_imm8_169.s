  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm1                    #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  movq $0x10, %rbx                          #  2     0x5   10     OPC=movq_r64_imm64     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xf   5      OPC=callq_label        
  callq .move_016_032_r8w_r9w_ebx           #  4     0x14  5      OPC=callq_label        
  retq                                      #  5     0x19  1      OPC=retq               
                                                                                         
.size target, .-target
