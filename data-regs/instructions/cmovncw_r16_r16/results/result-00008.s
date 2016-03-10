  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movsbw %bh, %sp     #  1     0     4      OPC=movsbw_r16_rh    
  cmovcw %bx, %cx     #  2     0x4   4      OPC=cmovcw_r16_r16   
  popcntw %cx, %r10w  #  3     0x8   6      OPC=popcntw_r16_r16  
  xaddb %r10b, %spl   #  4     0xe   4      OPC=xaddb_r8_r8      
  xorw %cx, %sp       #  5     0x12  3      OPC=xorw_r16_r16     
  cmovaew %cx, %bx    #  6     0x15  4      OPC=cmovaew_r16_r16  
  retq                #  7     0x19  1      OPC=retq             
                                                                 
.size target, .-target
