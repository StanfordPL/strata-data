  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  seto %r10b               #  1     0    4      OPC=seto_r8      
  callq .read_sf_into_rbx  #  2     0x4  5      OPC=callq_label  
  xorb %r10b, %bl          #  3     0x9  3      OPC=xorb_r8_r8   
  setpo %bl                #  4     0xc  3      OPC=setpo_r8     
  retq                     #  5     0xf  1      OPC=retq         
                                                                 
.size target, .-target
