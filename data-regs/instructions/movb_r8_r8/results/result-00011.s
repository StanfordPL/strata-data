  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movq $0x5, %rbx     #  1     0     10     OPC=movq_r64_imm64   
  xchgl %ebx, %ebx    #  2     0xa   2      OPC=xchgl_r32_r32    
  popcntw %bx, %r14w  #  3     0xc   6      OPC=popcntw_r16_r16  
  setnp %bh           #  4     0x12  3      OPC=setnp_rh         
  movb %bh, %bl       #  5     0x15  2      OPC=movb_r8_rh       
  xaddb %bl, %cl      #  6     0x17  3      OPC=xaddb_r8_r8      
  retq                #  7     0x1a  1      OPC=retq             
                                                                 
.size target, .-target
