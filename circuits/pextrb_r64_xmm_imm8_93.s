  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  movq $0x20, %rbx                    #  1     0     10     OPC=movq_r64_imm64           
  vfmadd213ss %xmm1, %xmm1, %xmm1     #  2     0xa   5      OPC=vfmadd213ss_xmm_xmm_xmm  
  callq .move_byte_13_of_ymm1_to_r9b  #  3     0xf   5      OPC=callq_label              
  xchgb %r9b, %bl                     #  4     0x14  3      OPC=xchgb_r8_r8              
  retq                                #  5     0x17  1      OPC=retq                     
                                                                                         
.size target, .-target
