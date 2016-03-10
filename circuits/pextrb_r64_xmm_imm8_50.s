  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  movdqa %xmm1, %xmm15                #  1     0     5      OPC=movdqa_xmm_xmm     
  movq $0x80, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64     
  vpmovzxbd %xmm15, %xmm2             #  3     0xf   5      OPC=vpmovzxbd_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9      #  4     0x14  5      OPC=callq_label        
  callq .move_byte_13_of_ymm1_to_r8b  #  5     0x19  5      OPC=callq_label        
  callq .move_008_016_r8b_r9b_dx      #  6     0x1e  5      OPC=callq_label        
  xaddb %bl, %dh                      #  7     0x23  3      OPC=xaddb_rh_r8        
  retq                                #  8     0x26  1      OPC=retq               
                                                                                   
.size target, .-target
