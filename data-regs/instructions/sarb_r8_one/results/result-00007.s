  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movsbq %bl, %r12    #  1     0    4      OPC=movsbq_r64_r8    
  sarw $0x1, %r12w    #  2     0x4  4      OPC=sarw_r16_one     
  cmovnow %r12w, %bx  #  3     0x8  5      OPC=cmovnow_r16_r16  
  retq                #  4     0xd  1      OPC=retq             
                                                                
.size target, .-target
