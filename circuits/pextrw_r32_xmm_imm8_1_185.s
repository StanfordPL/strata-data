  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovzxbd %xmm1, %xmm1                    #  1     0     5      OPC=vpmovzxbd_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label        
  movq $0x8, %rbx                           #  3     0xa   10     OPC=movq_r64_imm64     
  callq .move_008_016_r8b_r9b_bx            #  4     0x14  5      OPC=callq_label        
  retq                                      #  5     0x19  1      OPC=retq               
                                                                                         
.size target, .-target
