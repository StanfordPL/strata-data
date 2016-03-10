  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbw %bl, %bp   #  1     0    4      OPC=movsbw_r16_r8  
  movsbl %ah, %ebx  #  2     0x4  3      OPC=movsbl_r32_rh  
  orw %bp, %bx      #  3     0x7  3      OPC=orw_r16_r16    
  xchgw %bx, %bx    #  4     0xa  3      OPC=xchgw_r16_r16  
  retq              #  5     0xd  1      OPC=retq           
                                                            
.size target, .-target
