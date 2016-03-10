  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                 #  Line  RIP   Bytes  Opcode               
.target:               #        0     0      OPC=<label>          
  movsbq %bl, %r15     #  1     0     4      OPC=movsbq_r64_r8    
  sarw $0x1, %r15w     #  2     0x4   4      OPC=sarw_r16_one     
  cmovsw %r15w, %bx    #  3     0x8   5      OPC=cmovsw_r16_r16   
  cmovnsl %r15d, %ebx  #  4     0xd   4      OPC=cmovnsl_r32_r32  
  retq                 #  5     0x11  1      OPC=retq             
                                                                  
.size target, .-target
