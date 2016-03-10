  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode                
.target:                   #        0    0      OPC=<label>           
  cmovpol %ecx, %ebx       #  1     0    3      OPC=cmovpol_r32_r32   
  callq .read_pf_into_rcx  #  2     0x3  5      OPC=callq_label       
  shlb $0x1, %ch           #  3     0x8  2      OPC=shlb_rh_one       
  cmovnael %ebx, %ebx      #  4     0xa  3      OPC=cmovnael_r32_r32  
  retq                     #  5     0xd  1      OPC=retq              
                                                                      
.size target, .-target
