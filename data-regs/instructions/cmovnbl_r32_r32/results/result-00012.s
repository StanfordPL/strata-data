  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  callq .clear_zf      #  1     0    5      OPC=callq_label       
  xchgl %ecx, %ecx     #  2     0x5  2      OPC=xchgl_r32_r32     
  cmovnbel %ecx, %ebx  #  3     0x7  3      OPC=cmovnbel_r32_r32  
  retq                 #  4     0xa  1      OPC=retq              
                                                                  
.size target, .-target
