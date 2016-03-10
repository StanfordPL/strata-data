  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  xorl %eax, %eax          #  1     0     2      OPC=xorl_r32_r32     
  cmovael %ebx, %eax       #  2     0x2   3      OPC=cmovael_r32_r32  
  callq .read_zf_into_rbx  #  3     0x5   5      OPC=callq_label      
  notl %eax                #  4     0xa   2      OPC=notl_r32         
  adcl %ebx, %eax          #  5     0xc   2      OPC=adcl_r32_r32     
  setg %bl                 #  6     0xe   3      OPC=setg_r8          
  cmovael %eax, %ebx       #  7     0x11  3      OPC=cmovael_r32_r32  
  cmc                      #  8     0x14  1      OPC=cmc              
  retq                     #  9     0x15  1      OPC=retq             
                                                                      
.size target, .-target
