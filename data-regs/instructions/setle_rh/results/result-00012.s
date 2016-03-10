  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label   
  setnge %bh               #  2     0x5  3      OPC=setnge_rh     
  shlw $0x1, %bx           #  3     0x8  3      OPC=shlw_r16_one  
  setne %ah                #  4     0xb  3      OPC=setne_rh      
  retq                     #  5     0xe  1      OPC=retq          
                                                                  
.size target, .-target
