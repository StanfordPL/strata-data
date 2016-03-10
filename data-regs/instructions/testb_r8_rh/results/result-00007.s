  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %ah, %esi  #  1     0    3      OPC=movsbl_r32_rh  
  movsbl %bl, %r9d  #  2     0x3  4      OPC=movsbl_r32_r8  
  testb %sil, %r9b  #  3     0x7  3      OPC=testb_r8_r8    
  retq              #  4     0xa  1      OPC=retq           
                                                            
.size target, .-target
