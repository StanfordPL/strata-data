  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  setnle %al        #  1     0    3      OPC=setnle_r8       
  setge %dil        #  2     0x3  4      OPC=setge_r8        
  salb $0x1, %dil   #  3     0x7  2      OPC=salb_r8_one     
  seto %ah          #  4     0x9  3      OPC=seto_rh         
  movswl %ax, %ebx  #  5     0xc  3      OPC=movswl_r32_r16  
  retq              #  6     0xf  1      OPC=retq            
                                                             
.size target, .-target
