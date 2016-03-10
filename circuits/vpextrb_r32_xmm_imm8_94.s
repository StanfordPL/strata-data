  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                        
.target:                              #        0     0      OPC=<label>                   
  movq $0x20, %rbx                    #  1     0     10     OPC=movq_r64_imm64            
  vfnmadd231sd %xmm1, %xmm1, %xmm1    #  2     0xa   5      OPC=vfnmadd231sd_xmm_xmm_xmm  
  rolw $0x1, %bx                      #  3     0xf   3      OPC=rolw_r16_one              
  callq .move_byte_14_of_ymm1_to_r9b  #  4     0x12  5      OPC=callq_label               
  xchgb %r9b, %bl                     #  5     0x17  3      OPC=xchgb_r8_r8               
  retq                                #  6     0x1a  1      OPC=retq                      
                                                                                          
.size target, .-target
