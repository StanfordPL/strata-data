  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  callq .set_zf            #  1     0    5      OPC=callq_label    
  xchgw %cx, %cx           #  2     0x5  3      OPC=xchgw_r16_r16  
  callq .read_zf_into_rbx  #  3     0x8  5      OPC=callq_label    
  xchgl %ecx, %ebx         #  4     0xd  2      OPC=xchgl_r32_r32  
  retq                     #  5     0xf  1      OPC=retq           
                                                                   
.size target, .-target
