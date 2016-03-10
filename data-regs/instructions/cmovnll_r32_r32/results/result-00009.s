  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  xchgl %ecx, %ebx     #  1     0    2      OPC=xchgl_r32_r32     
  movb %ch, %ch        #  2     0x2  2      OPC=movb_rh_rh        
  cmovngel %ecx, %ebx  #  3     0x4  3      OPC=cmovngel_r32_r32  
  retq                 #  4     0x7  1      OPC=retq              
                                                                  
.size target, .-target
