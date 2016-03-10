  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode             
.target:              #        0     0      OPC=<label>        
  setbe %r9b          #  1     0     4      OPC=setbe_r8       
  movsbq %r9b, %rbp   #  2     0x4   4      OPC=movsbq_r64_r8  
  xorq %rax, %rax     #  3     0x8   3      OPC=xorq_r64_r64   
  setb %al            #  4     0xb   3      OPC=setb_r8        
  movzbw %bpl, %r12w  #  5     0xe   5      OPC=movzbw_r16_r8  
  xorw %r12w, %ax     #  6     0x13  4      OPC=xorw_r16_r16   
  setne %ah           #  7     0x17  3      OPC=setne_rh       
  retq                #  8     0x1a  1      OPC=retq           
                                                               
.size target, .-target
