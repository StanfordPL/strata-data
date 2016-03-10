  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  clc                      #  1     0     1      OPC=clc             
  callq .read_cf_into_rcx  #  2     0x1   5      OPC=callq_label     
  callq .read_sf_into_rbx  #  3     0x6   5      OPC=callq_label     
  movslq %ecx, %rsi        #  4     0xb   3      OPC=movslq_r64_r32  
  xorw %si, %bx            #  5     0xe   3      OPC=xorw_r16_r16    
  retq                     #  6     0x11  1      OPC=retq            
                                                                     
.size target, .-target
