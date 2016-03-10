  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  movdqa %xmm1, %xmm9                #  1     0     5      OPC=movdqa_xmm_xmm            
  vfnmsub231ss %xmm9, %xmm1, %xmm1   #  2     0x5   5      OPC=vfnmsub231ss_xmm_xmm_xmm  
  callq .move_byte_9_of_ymm1_to_r8b  #  3     0xa   5      OPC=callq_label               
  movq $0x8, %rbx                    #  4     0xf   10     OPC=movq_r64_imm64            
  movb %r8b, %bl                     #  5     0x19  3      OPC=movb_r8_r8                
  retq                               #  6     0x1c  1      OPC=retq                      
                                                                                         
.size target, .-target
