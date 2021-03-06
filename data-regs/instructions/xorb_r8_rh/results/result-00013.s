  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode             
.target:              #        0     0      OPC=<label>        
  movsbw %ah, %cx     #  1     0     4      OPC=movsbw_r16_rh  
  movzbq %bl, %r14    #  2     0x4   4      OPC=movzbq_r64_r8  
  movsbl %r14b, %ebx  #  3     0x8   4      OPC=movsbl_r32_r8  
  xorw %bx, %cx       #  4     0xc   3      OPC=xorw_r16_r16   
  xchgw %cx, %bx      #  5     0xf   3      OPC=xchgw_r16_r16  
  retq                #  6     0x12  1      OPC=retq           
                                                               
.size target, .-target
