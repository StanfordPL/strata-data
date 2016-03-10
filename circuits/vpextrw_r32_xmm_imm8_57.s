  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm1                    #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  movq $0x2, %rbx                           #  2     0x5   10     OPC=movq_r64_imm64     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xf   5      OPC=callq_label        
  xchgw %dx, %bx                            #  4     0x14  3      OPC=xchgw_r16_r16      
  retq                                      #  5     0x17  1      OPC=retq               
                                                                                         
.size target, .-target
