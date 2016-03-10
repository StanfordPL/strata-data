  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label   
  adcl %ebx, %ebx          #  2     0x5   2      OPC=adcl_r32_r32  
  callq .read_zf_into_rbx  #  3     0x7   5      OPC=callq_label   
  setnb %bh                #  4     0xc   3      OPC=setnb_rh      
  xorb %bh, %bl            #  5     0xf   2      OPC=xorb_r8_rh    
  retq                     #  6     0x11  1      OPC=retq          
                                                                   
.size target, .-target
